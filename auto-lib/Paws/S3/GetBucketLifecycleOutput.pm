
package Paws::S3::GetBucketLifecycleOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Rule/;
  has Rules => (is => 'ro', isa => ArrayRef[S3_Rule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::S3::Rule',
                            'type' => 'ArrayRef[S3_Rule]'
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

Paws::S3::GetBucketLifecycleOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[S3_Rule]






=cut

