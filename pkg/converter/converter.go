package converter

import (
	"bytes"
	"encoding/json"
)

func AnyToBytesBuffer(i interface{}) (*bytes.Buffer, error) {

	buf := new(bytes.Buffer)

	err := json.NewEncoder(buf).Encode(i)
	if err != nil {
		return buf, err
	}
	return buf, nil
}
