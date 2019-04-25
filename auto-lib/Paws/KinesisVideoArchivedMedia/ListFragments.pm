
package Paws::KinesisVideoArchivedMedia::ListFragments;
  use Moose;
  has FragmentSelector => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::FragmentSelector');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFragments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listFragments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::ListFragmentsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::ListFragments - Arguments for method ListFragments on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFragments on the
L<Amazon Kinesis Video Streams Archived Media|Paws::KinesisVideoArchivedMedia> service. Use the attributes of this class
as arguments to method ListFragments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFragments.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoArchivedMedia');
    my $ListFragmentsOutput = $kinesisvideo->ListFragments(
      StreamName       => 'MyStreamName',
      FragmentSelector => {
        FragmentSelectorType =>
          'PRODUCER_TIMESTAMP',   # values: PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
        TimestampRange => {
          EndTimestamp   => '1970-01-01T01:00:00',
          StartTimestamp => '1970-01-01T01:00:00',

        },

      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Fragments = $ListFragmentsOutput->Fragments;
    my $NextToken = $ListFragmentsOutput->NextToken;

    # Returns a L<Paws::KinesisVideoArchivedMedia::ListFragmentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/ListFragments>

=head1 ATTRIBUTES


=head2 FragmentSelector => L<Paws::KinesisVideoArchivedMedia::FragmentSelector>

Describes the time stamp range and time stamp origin for the range of
fragments to return.



=head2 MaxResults => Int

The total number of fragments to return. If the total number of
fragments available is more than the value specified in C<max-results>,
then a ListFragmentsOutput$NextToken is provided in the output that you
can use to resume pagination.



=head2 NextToken => Str

A token to specify where to start paginating. This is the
ListFragmentsOutput$NextToken from a previously truncated response.



=head2 B<REQUIRED> StreamName => Str

The name of the stream from which to retrieve a fragment list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFragments in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

