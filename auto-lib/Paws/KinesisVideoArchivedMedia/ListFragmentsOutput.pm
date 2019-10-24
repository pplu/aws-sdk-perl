
package Paws::KinesisVideoArchivedMedia::ListFragmentsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisVideoArchivedMedia::Types qw/KinesisVideoArchivedMedia_Fragment/;
  has Fragments => (is => 'ro', isa => ArrayRef[KinesisVideoArchivedMedia_Fragment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Fragments' => {
                                'class' => 'Paws::KinesisVideoArchivedMedia::Fragment',
                                'type' => 'ArrayRef[KinesisVideoArchivedMedia_Fragment]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::ListFragmentsOutput

=head1 ATTRIBUTES


=head2 Fragments => ArrayRef[KinesisVideoArchivedMedia_Fragment]

A list of archived Fragment objects from the stream that meet the
selector criteria. Results are in no specific order, even across pages.


=head2 NextToken => Str

If the returned list is truncated, the operation returns this token to
use to retrieve the next page of results. This value is C<null> when
there are no more results to return.


=head2 _request_id => Str


=cut

