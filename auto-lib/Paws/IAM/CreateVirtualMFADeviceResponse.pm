
package Paws::IAM::CreateVirtualMFADeviceResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_VirtualMFADevice/;
  has VirtualMFADevice => (is => 'ro', isa => IAM_VirtualMFADevice, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VirtualMFADevice' => {
                                       'class' => 'Paws::IAM::VirtualMFADevice',
                                       'type' => 'IAM_VirtualMFADevice'
                                     }
             },
  'IsRequired' => {
                    'VirtualMFADevice' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateVirtualMFADeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualMFADevice => IAM_VirtualMFADevice

A structure containing details about the new virtual MFA device.


=head2 _request_id => Str


=cut

