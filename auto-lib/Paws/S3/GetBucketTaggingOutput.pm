
package Paws::S3::GetBucketTaggingOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Tag/;
  has TagSet => (is => 'ro', isa => ArrayRef[S3_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagSet' => {
                             'class' => 'Paws::S3::Tag',
                             'type' => 'ArrayRef[S3_Tag]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TagSet' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[S3_Tag]






=cut

