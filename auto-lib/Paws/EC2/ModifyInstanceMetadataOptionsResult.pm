
package Paws::EC2::ModifyInstanceMetadataOptionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_InstanceMetadataOptionsResponse/;
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceMetadataOptions => (is => 'ro', isa => EC2_InstanceMetadataOptionsResponse);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceMetadataOptions' => {
                                              'type' => 'EC2_InstanceMetadataOptionsResponse',
                                              'class' => 'Paws::EC2::InstanceMetadataOptionsResponse'
                                            },
               'InstanceId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'InstanceMetadataOptions' => 'instanceMetadataOptions',
                       'InstanceId' => 'instanceId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMetadataOptionsResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceMetadataOptions => EC2_InstanceMetadataOptionsResponse

The metadata options for the instance.


=head2 _request_id => Str


=cut

