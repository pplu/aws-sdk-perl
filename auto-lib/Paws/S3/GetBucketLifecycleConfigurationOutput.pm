
package Paws::S3::GetBucketLifecycleConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_LifecycleRule/;
  has Rules => (is => 'ro', isa => ArrayRef[S3_LifecycleRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'type' => 'ArrayRef[S3_LifecycleRule]',
                            'class' => 'Paws::S3::LifecycleRule'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Rules' => 'Rule'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLifecycleConfigurationOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[S3_LifecycleRule]

Container for a lifecycle rule.




=cut

