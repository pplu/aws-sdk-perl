
package Paws::EFS::DescribeMountTargetSecurityGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EFS::Types qw//;
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'IsRequired' => {
                    'SecurityGroups' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeMountTargetSecurityGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str|Undef]

An array of security groups.


=head2 _request_id => Str


=cut

