
package Paws::MediaPackageVod::CreatePackagingGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Id' => 'id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::CreatePackagingGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the PackagingGroup.


=head2 Id => Str

The ID of the PackagingGroup.


=head2 _request_id => Str


=cut

