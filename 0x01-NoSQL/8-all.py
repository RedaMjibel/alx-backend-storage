#!/usr/bin/env python3
"""
Lists all documents in a collection
"""

import pymongo


def list_all(mongo_collection):
    """lists all documents in a collection"""
    documents = mongo_collection.find()
    return [doc for doc in documents]
