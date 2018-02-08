# Wfuzz Docker image
A Docker image of [Wfuzz](https://github.com/xmendez/wfuzz).

## Usage:

    docker run --rm hypnza/wfuzz <options> <target>

## Example:

    ~: docker run --rm -v /tmp:/wordlists hypnza/wfuzz -z file,/wordlists/sample.txt http://example.com\?someParam\=FUZZ
		********************************************************
		* Wfuzz 2.2.9 - The Web Fuzzer                         *
		********************************************************

		Target: http://example.com?someParam=FUZZ/
		Total requests: 2

		==================================================================
		ID      Response   Lines      Word         Chars          Payload
		==================================================================

		000001:  C=000     50 L      120 W         1270 Ch        "Foo"
		000002:  C=000     50 L      120 W         1270 Ch        "Bar"

		Total time: 0.540675
		Processed Requests: 2
		Filtered Requests: 0
		Requests/sec.: 3.699078
