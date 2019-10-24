# Generated from json/callresult_class.tt

package Paws::Inspector::CreateResourceGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has ResourceGroupArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceGroupArn' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'ResourceGroupArn' => 'resourceGroupArn'
                     },
  'IsRequired' => {
                    'ResourceGroupArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGroupArn => Str

The ARN that specifies the resource group that is created.


=head2 _request_id => Str


=cut

1;