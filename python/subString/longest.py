from typing import List

def lengthOfLongestSubstring(s: str) -> int:
    ''' Use a pointer to the begining of the 
    latest substring and a dictionary char -> index to control 
    the position of each char of the substring. '''
    maxLength = 0
    
    sub = { 'start': 0, 'dic': dict() }

    for i, key in enumerate(s):
        # repetion found
        if key in sub['dic']:
            # terminate substring.
            sub['start'] = sub['dic'][key] + 1

            # remove previous chars from the old substring
            ks = []
            for k in sub['dic'].keys():
                if sub['dic'][k] < sub['start']:
                    ks.append(k)
            for k in ks:
                sub['dic'].pop(k)

        # calculate current length and check the max.
        length = (i - sub['start']) + 1

        if maxLength < length:
            maxLength = length
        
        sub['dic'][key] = i

    return maxLength
