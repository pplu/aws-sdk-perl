
package Paws::S3::GetBucketTaggingOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Tag/;
  has TagSet => (is => 'ro', isa => ArrayRef[S3_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagSet' => {
                             'type' => 'ArrayRef[S3_Tag]',
                             'class' => 'Paws::S3::Tag'
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

Contains the tag set.




=cut

