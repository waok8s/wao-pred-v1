// Code generated by protoc-gen-go. DO NOT EDIT.
// source: tensorflow_serving/sources/storage_path/file_system_storage_path_source.proto

package tensorflow_serving

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

// Config proto for FileSystemStoragePathSource.
type FileSystemStoragePathSourceConfig struct {
	// The servables to monitor for new versions, and aspire.
	Servables []*FileSystemStoragePathSourceConfig_ServableToMonitor `protobuf:"bytes,5,rep,name=servables,proto3" json:"servables,omitempty"`
	// A single servable name/base_path pair to monitor.
	// DEPRECATED: Use 'servables' instead.
	// TODO(b/30898016): Stop using these fields, and ultimately remove them here.
	ServableName string `protobuf:"bytes,1,opt,name=servable_name,json=servableName,proto3" json:"servable_name,omitempty"` // Deprecated: Do not use.
	BasePath     string `protobuf:"bytes,2,opt,name=base_path,json=basePath,proto3" json:"base_path,omitempty"`             // Deprecated: Do not use.
	// How long to wait between file-system polling to look for children of
	// 'base_path', in seconds.
	//
	// For testing use only: a negative value disables the polling thread.
	FileSystemPollWaitSeconds int64 `protobuf:"varint,3,opt,name=file_system_poll_wait_seconds,json=fileSystemPollWaitSeconds,proto3" json:"file_system_poll_wait_seconds,omitempty"`
	// If true, then FileSystemStoragePathSource::Create() and ::UpdateConfig()
	// fail if, for any configured servables, the file system doesn't currently
	// contain at least one version under the base path.
	// (Otherwise, it will emit a warning and keep pinging the file system to
	// check for a version to appear later.)
	FailIfZeroVersionsAtStartup bool     `protobuf:"varint,4,opt,name=fail_if_zero_versions_at_startup,json=failIfZeroVersionsAtStartup,proto3" json:"fail_if_zero_versions_at_startup,omitempty"`
	XXX_NoUnkeyedLiteral        struct{} `json:"-"`
	XXX_unrecognized            []byte   `json:"-"`
	XXX_sizecache               int32    `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig) Reset()         { *m = FileSystemStoragePathSourceConfig{} }
func (m *FileSystemStoragePathSourceConfig) String() string { return proto.CompactTextString(m) }
func (*FileSystemStoragePathSourceConfig) ProtoMessage()    {}
func (*FileSystemStoragePathSourceConfig) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0}
}

func (m *FileSystemStoragePathSourceConfig) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig.Size(m)
}
func (m *FileSystemStoragePathSourceConfig) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig proto.InternalMessageInfo

func (m *FileSystemStoragePathSourceConfig) GetServables() []*FileSystemStoragePathSourceConfig_ServableToMonitor {
	if m != nil {
		return m.Servables
	}
	return nil
}

// Deprecated: Do not use.
func (m *FileSystemStoragePathSourceConfig) GetServableName() string {
	if m != nil {
		return m.ServableName
	}
	return ""
}

// Deprecated: Do not use.
func (m *FileSystemStoragePathSourceConfig) GetBasePath() string {
	if m != nil {
		return m.BasePath
	}
	return ""
}

func (m *FileSystemStoragePathSourceConfig) GetFileSystemPollWaitSeconds() int64 {
	if m != nil {
		return m.FileSystemPollWaitSeconds
	}
	return 0
}

func (m *FileSystemStoragePathSourceConfig) GetFailIfZeroVersionsAtStartup() bool {
	if m != nil {
		return m.FailIfZeroVersionsAtStartup
	}
	return false
}

// A policy that dictates which version(s) of a servable should be served.
type FileSystemStoragePathSourceConfig_ServableVersionPolicy struct {
	// Types that are valid to be assigned to PolicyChoice:
	//
	//	*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest_
	//	*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All_
	//	*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific_
	PolicyChoice         isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice `protobuf_oneof:"policy_choice"`
	XXX_NoUnkeyedLiteral struct{}                                                               `json:"-"`
	XXX_unrecognized     []byte                                                                 `json:"-"`
	XXX_sizecache        int32                                                                  `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) Reset() {
	*m = FileSystemStoragePathSourceConfig_ServableVersionPolicy{}
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) String() string {
	return proto.CompactTextString(m)
}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy) ProtoMessage() {}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0, 0}
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy.Size(m)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy proto.InternalMessageInfo

type isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice interface {
	isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice()
}

type FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest_ struct {
	Latest *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest `protobuf:"bytes,100,opt,name=latest,proto3,oneof"`
}

type FileSystemStoragePathSourceConfig_ServableVersionPolicy_All_ struct {
	All *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All `protobuf:"bytes,101,opt,name=all,proto3,oneof"`
}

type FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific_ struct {
	Specific *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific `protobuf:"bytes,102,opt,name=specific,proto3,oneof"`
}

func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest_) isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice() {
}

func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All_) isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice() {
}

func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific_) isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice() {
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) GetPolicyChoice() isFileSystemStoragePathSourceConfig_ServableVersionPolicy_PolicyChoice {
	if m != nil {
		return m.PolicyChoice
	}
	return nil
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) GetLatest() *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest {
	if x, ok := m.GetPolicyChoice().(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest_); ok {
		return x.Latest
	}
	return nil
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) GetAll() *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All {
	if x, ok := m.GetPolicyChoice().(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All_); ok {
		return x.All
	}
	return nil
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy) GetSpecific() *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific {
	if x, ok := m.GetPolicyChoice().(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific_); ok {
		return x.Specific
	}
	return nil
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest_)(nil),
		(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All_)(nil),
		(*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific_)(nil),
	}
}

// Serve the latest versions (i.e. the ones with the highest version
// numbers), among those found on disk.
//
// This is the default policy, with the default number of versions as 1.
type FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest struct {
	// Number of latest versions to serve. (The default is 1.)
	NumVersions          uint32   `protobuf:"varint,1,opt,name=num_versions,json=numVersions,proto3" json:"num_versions,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) Reset() {
	*m = FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest{}
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) String() string {
	return proto.CompactTextString(m)
}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) ProtoMessage() {}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0, 0, 0}
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest.Size(m)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest proto.InternalMessageInfo

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest) GetNumVersions() uint32 {
	if m != nil {
		return m.NumVersions
	}
	return 0
}

// Serve all versions found on disk.
type FileSystemStoragePathSourceConfig_ServableVersionPolicy_All struct {
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) Reset() {
	*m = FileSystemStoragePathSourceConfig_ServableVersionPolicy_All{}
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) String() string {
	return proto.CompactTextString(m)
}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) ProtoMessage() {}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0, 0, 1}
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All.Size(m)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_All) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_All proto.InternalMessageInfo

// Serve a specific version (or set of versions).
//
// This policy is useful for rolling back to a specific version, or for
// canarying a specific version while still serving a separate stable
// version.
type FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific struct {
	// The version numbers to serve.
	Versions             []int64  `protobuf:"varint,1,rep,packed,name=versions,proto3" json:"versions,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) Reset() {
	*m = FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific{}
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) String() string {
	return proto.CompactTextString(m)
}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) ProtoMessage() {}
func (*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0, 0, 2}
}

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific.Size(m)
}
func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific proto.InternalMessageInfo

func (m *FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific) GetVersions() []int64 {
	if m != nil {
		return m.Versions
	}
	return nil
}

// A servable name and base path to look for versions of the servable.
type FileSystemStoragePathSourceConfig_ServableToMonitor struct {
	// The servable name to supply in aspired-versions callback calls. Child
	// paths of 'base_path' are considered to be versions of this servable.
	ServableName string `protobuf:"bytes,1,opt,name=servable_name,json=servableName,proto3" json:"servable_name,omitempty"`
	// The path to monitor, i.e. look for child paths of the form base_path/123.
	BasePath string `protobuf:"bytes,2,opt,name=base_path,json=basePath,proto3" json:"base_path,omitempty"`
	// The policy to determines the number of versions of the servable to be
	// served at the same time.
	ServableVersionPolicy *FileSystemStoragePathSourceConfig_ServableVersionPolicy `protobuf:"bytes,4,opt,name=servable_version_policy,json=servableVersionPolicy,proto3" json:"servable_version_policy,omitempty"`
	XXX_NoUnkeyedLiteral  struct{}                                                 `json:"-"`
	XXX_unrecognized      []byte                                                   `json:"-"`
	XXX_sizecache         int32                                                    `json:"-"`
}

func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) Reset() {
	*m = FileSystemStoragePathSourceConfig_ServableToMonitor{}
}
func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) String() string {
	return proto.CompactTextString(m)
}
func (*FileSystemStoragePathSourceConfig_ServableToMonitor) ProtoMessage() {}
func (*FileSystemStoragePathSourceConfig_ServableToMonitor) Descriptor() ([]byte, []int) {
	return fileDescriptor_300b419ac6423181, []int{0, 1}
}

func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor.Unmarshal(m, b)
}
func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor.Marshal(b, m, deterministic)
}
func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) XXX_Merge(src proto.Message) {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor.Merge(m, src)
}
func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) XXX_Size() int {
	return xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor.Size(m)
}
func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) XXX_DiscardUnknown() {
	xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor.DiscardUnknown(m)
}

var xxx_messageInfo_FileSystemStoragePathSourceConfig_ServableToMonitor proto.InternalMessageInfo

func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) GetServableName() string {
	if m != nil {
		return m.ServableName
	}
	return ""
}

func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) GetBasePath() string {
	if m != nil {
		return m.BasePath
	}
	return ""
}

func (m *FileSystemStoragePathSourceConfig_ServableToMonitor) GetServableVersionPolicy() *FileSystemStoragePathSourceConfig_ServableVersionPolicy {
	if m != nil {
		return m.ServableVersionPolicy
	}
	return nil
}

func init() {
	proto.RegisterType((*FileSystemStoragePathSourceConfig)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig")
	proto.RegisterType((*FileSystemStoragePathSourceConfig_ServableVersionPolicy)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig.ServableVersionPolicy")
	proto.RegisterType((*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Latest)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig.ServableVersionPolicy.Latest")
	proto.RegisterType((*FileSystemStoragePathSourceConfig_ServableVersionPolicy_All)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig.ServableVersionPolicy.All")
	proto.RegisterType((*FileSystemStoragePathSourceConfig_ServableVersionPolicy_Specific)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig.ServableVersionPolicy.Specific")
	proto.RegisterType((*FileSystemStoragePathSourceConfig_ServableToMonitor)(nil), "tensorflow.serving.FileSystemStoragePathSourceConfig.ServableToMonitor")
}

func init() {
	proto.RegisterFile("tensorflow_serving/sources/storage_path/file_system_storage_path_source.proto", fileDescriptor_300b419ac6423181)
}

var fileDescriptor_300b419ac6423181 = []byte{
	// 499 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xac, 0x94, 0xdf, 0x8a, 0xd3, 0x40,
	0x14, 0xc6, 0x9b, 0x4d, 0xb7, 0xa4, 0xa7, 0x5b, 0xd4, 0x81, 0xc5, 0x98, 0x45, 0xcc, 0x2a, 0x68,
	0x40, 0x48, 0xa1, 0xbe, 0x80, 0x5d, 0x51, 0xeb, 0x9f, 0xd5, 0x32, 0x59, 0x14, 0xbc, 0x19, 0xa6,
	0xd9, 0x93, 0x76, 0x60, 0x9a, 0x09, 0x33, 0xd3, 0x5d, 0xd6, 0x5b, 0x1f, 0xc0, 0x07, 0xf3, 0x29,
	0x7c, 0x13, 0x69, 0x92, 0x66, 0xab, 0x5d, 0xf0, 0x62, 0x7b, 0x39, 0x73, 0xbe, 0xf3, 0xfb, 0x72,
	0xce, 0x7c, 0x04, 0x4e, 0x2d, 0xe6, 0x46, 0xe9, 0x4c, 0xaa, 0x4b, 0x66, 0x50, 0x5f, 0x88, 0x7c,
	0x36, 0x30, 0x6a, 0xa9, 0x53, 0x34, 0x03, 0x63, 0x95, 0xe6, 0x33, 0x64, 0x05, 0xb7, 0xf3, 0x41,
	0x26, 0x24, 0x32, 0x73, 0x65, 0x2c, 0x2e, 0xd8, 0x66, 0x81, 0x55, 0xea, 0xb8, 0xd0, 0xca, 0x2a,
	0x42, 0xae, 0x71, 0x71, 0x8d, 0x7b, 0xfc, 0xd3, 0x83, 0xe3, 0x37, 0x42, 0x62, 0x52, 0x36, 0x27,
	0x55, 0xef, 0x84, 0xdb, 0x79, 0x52, 0x76, 0xbe, 0x52, 0x79, 0x26, 0x66, 0x04, 0xa1, 0xbb, 0x6a,
	0xe0, 0x53, 0x89, 0xc6, 0xdf, 0x0f, 0xdd, 0xa8, 0x37, 0x7c, 0x1b, 0x6f, 0xd3, 0xe2, 0xff, 0x92,
	0xe2, 0xa4, 0xc6, 0x9c, 0xa9, 0x53, 0x95, 0x0b, 0xab, 0x34, 0xbd, 0x26, 0x93, 0x67, 0xd0, 0x5f,
	0x1f, 0x58, 0xce, 0x17, 0xe8, 0x3b, 0xa1, 0x13, 0x75, 0x4f, 0xf6, 0x7c, 0x87, 0x1e, 0xac, 0x0b,
	0x9f, 0xf8, 0x02, 0xc9, 0x23, 0xe8, 0x4e, 0xb9, 0xa9, 0x66, 0xf4, 0xf7, 0x1a, 0x91, 0xb7, 0xba,
	0x5c, 0x59, 0x92, 0x97, 0xf0, 0x70, 0x73, 0x27, 0x85, 0x92, 0x92, 0x5d, 0x72, 0x61, 0x99, 0xc1,
	0x54, 0xe5, 0xe7, 0xc6, 0x77, 0x43, 0x27, 0x72, 0xe9, 0x83, 0xac, 0xf9, 0xe0, 0x89, 0x92, 0xf2,
	0x2b, 0x17, 0x36, 0xa9, 0x04, 0xe4, 0x35, 0x84, 0x19, 0x17, 0x92, 0x89, 0x8c, 0x7d, 0x47, 0xad,
	0xd8, 0x05, 0x6a, 0x23, 0x54, 0x6e, 0x18, 0xb7, 0xcc, 0x58, 0xae, 0xed, 0xb2, 0xf0, 0xdb, 0xa1,
	0x13, 0x79, 0xf4, 0x68, 0xa5, 0x7b, 0x97, 0x7d, 0x43, 0xad, 0xbe, 0xd4, 0xa2, 0x91, 0x4d, 0x2a,
	0x49, 0xf0, 0xcb, 0x85, 0xc3, 0xf5, 0xcc, 0x75, 0x75, 0xa2, 0xa4, 0x48, 0xaf, 0x88, 0x84, 0x8e,
	0xe4, 0x16, 0x8d, 0xf5, 0xcf, 0x43, 0x27, 0xea, 0x0d, 0xe9, 0xed, 0x16, 0xfa, 0x17, 0x3c, 0xfe,
	0x58, 0x92, 0xc7, 0x2d, 0x5a, 0x7b, 0x90, 0x14, 0x5c, 0x2e, 0xa5, 0x8f, 0xa5, 0xd5, 0xe7, 0x5d,
	0x5a, 0x8d, 0xa4, 0x1c, 0xb7, 0xe8, 0x8a, 0x4e, 0x34, 0x78, 0xa6, 0xc0, 0x54, 0x64, 0x22, 0xf5,
	0xb3, 0xd2, 0xe9, 0x6c, 0x97, 0x4e, 0x49, 0xcd, 0x1e, 0xb7, 0x68, 0xe3, 0x13, 0x3c, 0x87, 0x4e,
	0x35, 0x2c, 0x39, 0x86, 0x83, 0x7c, 0xb9, 0x68, 0x1e, 0xaa, 0x0c, 0x4f, 0x9f, 0xf6, 0xf2, 0xe5,
	0x62, 0xfd, 0x2c, 0xc1, 0x3e, 0xb8, 0x23, 0x29, 0x83, 0xa7, 0xe0, 0xad, 0x59, 0x24, 0x00, 0x6f,
	0xa3, 0xc3, 0x8d, 0x5c, 0xda, 0x9c, 0x4f, 0xee, 0x40, 0xbf, 0x28, 0xad, 0x59, 0x3a, 0x57, 0x22,
	0xc5, 0xe0, 0xb7, 0x03, 0xf7, 0xb6, 0x12, 0x4c, 0x9e, 0xdc, 0x18, 0xdb, 0x7f, 0x22, 0x7b, 0xb4,
	0x15, 0xd9, 0x8d, 0xb8, 0xfe, 0x70, 0xe0, 0x7e, 0x83, 0xa8, 0xed, 0x59, 0x65, 0x5d, 0x86, 0xac,
	0x37, 0xfc, 0xb0, 0xc3, 0x45, 0xd2, 0x43, 0x73, 0xd3, 0xf5, 0xfb, 0xb6, 0xe7, 0xde, 0x6d, 0x4f,
	0x3b, 0xe5, 0xcf, 0xe2, 0xc5, 0x9f, 0x00, 0x00, 0x00, 0xff, 0xff, 0x3c, 0x9c, 0x7a, 0xf7, 0x7d,
	0x04, 0x00, 0x00,
}
