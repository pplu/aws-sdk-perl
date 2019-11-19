
package Paws::EFS::DescribeMountTargetSecurityGroupsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::EFS::Types qw//;
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SecurityGroups' => 1
                  },
  'types' => {
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
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

