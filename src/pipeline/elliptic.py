import random
from typing import Tuple

from utils import checks


def extract_primes(lims: Tuple[int, int]) -> list[int]:
    """
    """
    return [
        item 
        for item in range(lims[0], lims[1])
        if checks.is_prime(item)
    ]


def select_prime(lims: Tuple[int, int]) -> int:
    """
    """
    return random.choice(extract_primes(lims))