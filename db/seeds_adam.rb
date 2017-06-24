Deck.create(name: "Ruby Enumerables")

Card.create(question: "Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } which will cause _____  to return true when none of the collection members are false or nil", answer: '.any?', deck_id: 4)
Card.create(question: "Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } which will cause ______ to return true when none of the collection members are false or nil.", answer: '.all?', deck_id: 4)
Card.create(question: "Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise." , answer: ".find", deck_id: 4)
Card.create(question: "Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.", answer: ".reduce", deck_id: 4)
Card.create(question: "Returns true if any member of enum equals obj. Equality is tested using ==. ", answer: ".include?", deck_id: 4)
Card.create(question: "Returns an array containing the items in enum _____ed.", answer: ".sort", deck_id: 4)
