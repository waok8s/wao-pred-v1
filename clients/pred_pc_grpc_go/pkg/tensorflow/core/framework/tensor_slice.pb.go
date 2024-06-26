// Code generated by protoc-gen-go. DO NOT EDIT.
// source: tensorflow/core/framework/tensor_slice.proto

package tensorflow

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

// Can only be interpreted if you know the corresponding TensorShape.
type TensorSliceProto struct {
	// Extent of the slice in all tensor dimensions.
	//
	// Must have one entry for each of the dimension of the tensor that this
	// slice belongs to.  The order of sizes is the same as the order of
	// dimensions in the TensorShape.
	Extent               []*TensorSliceProto_Extent `protobuf:"bytes,1,rep,name=extent,proto3" json:"extent,omitempty"`
	XXX_NoUnkeyedLiteral struct{}                   `json:"-"`
	XXX_unrecognized     []byte                     `json:"-"`
	XXX_sizecache        int32                      `json:"-"`
}

func (m *TensorSliceProto) Reset()         { *m = TensorSliceProto{} }
func (m *TensorSliceProto) String() string { return proto.CompactTextString(m) }
func (*TensorSliceProto) ProtoMessage()    {}
func (*TensorSliceProto) Descriptor() ([]byte, []int) {
	return fileDescriptor_efadfca37d8372d8, []int{0}
}

func (m *TensorSliceProto) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_TensorSliceProto.Unmarshal(m, b)
}
func (m *TensorSliceProto) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_TensorSliceProto.Marshal(b, m, deterministic)
}
func (m *TensorSliceProto) XXX_Merge(src proto.Message) {
	xxx_messageInfo_TensorSliceProto.Merge(m, src)
}
func (m *TensorSliceProto) XXX_Size() int {
	return xxx_messageInfo_TensorSliceProto.Size(m)
}
func (m *TensorSliceProto) XXX_DiscardUnknown() {
	xxx_messageInfo_TensorSliceProto.DiscardUnknown(m)
}

var xxx_messageInfo_TensorSliceProto proto.InternalMessageInfo

func (m *TensorSliceProto) GetExtent() []*TensorSliceProto_Extent {
	if m != nil {
		return m.Extent
	}
	return nil
}

// Extent of the slice in one dimension.
type TensorSliceProto_Extent struct {
	// Start index of the slice, starting at 0.
	Start int64 `protobuf:"varint,1,opt,name=start,proto3" json:"start,omitempty"`
	// Length of the slice: if the length is missing or -1 we will
	// interpret this as "everything in this dimension".  We use
	// "oneof" to preserve information about whether the length is
	// present without changing the serialization format from the
	// prior proto2 version of this proto.
	//
	// Types that are valid to be assigned to HasLength:
	//
	//	*TensorSliceProto_Extent_Length
	HasLength            isTensorSliceProto_Extent_HasLength `protobuf_oneof:"has_length"`
	XXX_NoUnkeyedLiteral struct{}                            `json:"-"`
	XXX_unrecognized     []byte                              `json:"-"`
	XXX_sizecache        int32                               `json:"-"`
}

func (m *TensorSliceProto_Extent) Reset()         { *m = TensorSliceProto_Extent{} }
func (m *TensorSliceProto_Extent) String() string { return proto.CompactTextString(m) }
func (*TensorSliceProto_Extent) ProtoMessage()    {}
func (*TensorSliceProto_Extent) Descriptor() ([]byte, []int) {
	return fileDescriptor_efadfca37d8372d8, []int{0, 0}
}

func (m *TensorSliceProto_Extent) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_TensorSliceProto_Extent.Unmarshal(m, b)
}
func (m *TensorSliceProto_Extent) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_TensorSliceProto_Extent.Marshal(b, m, deterministic)
}
func (m *TensorSliceProto_Extent) XXX_Merge(src proto.Message) {
	xxx_messageInfo_TensorSliceProto_Extent.Merge(m, src)
}
func (m *TensorSliceProto_Extent) XXX_Size() int {
	return xxx_messageInfo_TensorSliceProto_Extent.Size(m)
}
func (m *TensorSliceProto_Extent) XXX_DiscardUnknown() {
	xxx_messageInfo_TensorSliceProto_Extent.DiscardUnknown(m)
}

var xxx_messageInfo_TensorSliceProto_Extent proto.InternalMessageInfo

func (m *TensorSliceProto_Extent) GetStart() int64 {
	if m != nil {
		return m.Start
	}
	return 0
}

type isTensorSliceProto_Extent_HasLength interface {
	isTensorSliceProto_Extent_HasLength()
}

type TensorSliceProto_Extent_Length struct {
	Length int64 `protobuf:"varint,2,opt,name=length,proto3,oneof"`
}

func (*TensorSliceProto_Extent_Length) isTensorSliceProto_Extent_HasLength() {}

func (m *TensorSliceProto_Extent) GetHasLength() isTensorSliceProto_Extent_HasLength {
	if m != nil {
		return m.HasLength
	}
	return nil
}

func (m *TensorSliceProto_Extent) GetLength() int64 {
	if x, ok := m.GetHasLength().(*TensorSliceProto_Extent_Length); ok {
		return x.Length
	}
	return 0
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*TensorSliceProto_Extent) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*TensorSliceProto_Extent_Length)(nil),
	}
}

func init() {
	proto.RegisterType((*TensorSliceProto)(nil), "tensorflow.TensorSliceProto")
	proto.RegisterType((*TensorSliceProto_Extent)(nil), "tensorflow.TensorSliceProto.Extent")
}

func init() {
	proto.RegisterFile("tensorflow/core/framework/tensor_slice.proto", fileDescriptor_efadfca37d8372d8)
}

var fileDescriptor_efadfca37d8372d8 = []byte{
	// 190 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xd2, 0x29, 0x49, 0xcd, 0x2b,
	0xce, 0x2f, 0x4a, 0xcb, 0xc9, 0x2f, 0xd7, 0x4f, 0xce, 0x2f, 0x4a, 0xd5, 0x4f, 0x2b, 0x4a, 0xcc,
	0x4d, 0x2d, 0xcf, 0x2f, 0xca, 0xd6, 0x87, 0xc8, 0xc4, 0x17, 0xe7, 0x64, 0x26, 0xa7, 0xea, 0x15,
	0x14, 0xe5, 0x97, 0xe4, 0x0b, 0x71, 0x21, 0x54, 0x2b, 0x4d, 0x67, 0xe4, 0x12, 0x08, 0x01, 0x73,
	0x83, 0x41, 0x2a, 0x02, 0xc0, 0x0a, 0xac, 0xb9, 0xd8, 0x52, 0x2b, 0x4a, 0x52, 0xf3, 0x4a, 0x24,
	0x18, 0x15, 0x98, 0x35, 0xb8, 0x8d, 0x94, 0xf5, 0x10, 0x3a, 0xf4, 0xd0, 0x55, 0xeb, 0xb9, 0x82,
	0x95, 0x06, 0x41, 0xb5, 0x48, 0xb9, 0x71, 0xb1, 0x41, 0x44, 0x84, 0x44, 0xb8, 0x58, 0x8b, 0x4b,
	0x12, 0x8b, 0x40, 0xa6, 0x30, 0x6a, 0x30, 0x07, 0x41, 0x38, 0x42, 0x12, 0x5c, 0x6c, 0x39, 0xa9,
	0x79, 0xe9, 0x25, 0x19, 0x12, 0x4c, 0x20, 0x61, 0x0f, 0x86, 0x20, 0x28, 0xdf, 0x89, 0x87, 0x8b,
	0x2b, 0x23, 0xb1, 0x38, 0x1e, 0xca, 0x33, 0xe2, 0x92, 0xc8, 0x2f, 0x4a, 0x47, 0xb6, 0x19, 0xee,
	0x29, 0x27, 0x41, 0x74, 0x47, 0x14, 0x07, 0x30, 0xfe, 0x60, 0x64, 0x4c, 0x62, 0x03, 0x7b, 0xd0,
	0x18, 0x10, 0x00, 0x00, 0xff, 0xff, 0xf8, 0xe6, 0xc9, 0xa7, 0x10, 0x01, 0x00, 0x00,
}
