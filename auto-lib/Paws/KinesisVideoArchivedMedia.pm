package Paws::KinesisVideoArchivedMedia;
  use Moose;
  sub service { 'kinesisvideo' }
  sub version { '2017-09-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetMediaForFragmentList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFragments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoArchivedMedia::ListFragments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetMediaForFragmentList ListFragments / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia - Perl Interface to AWS Amazon Kinesis Video Streams Archived Media

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideoArchivedMedia');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



=head1 METHODS

=head2 GetMediaForFragmentList

=over

=item Fragments => ArrayRef[Str|Undef]

=item StreamName => Str


=back

Each argument is described in detail in: L<Paws::KinesisVideoArchivedMedia::GetMediaForFragmentList>

Returns: a L<Paws::KinesisVideoArchivedMedia::GetMediaForFragmentListOutput> instance

Gets media for a list of fragments (specified by fragment number) from
the archived data in a Kinesis video stream.

This operation is only available for the AWS SDK for Java. It is not
supported in AWS SDKs for other languages.

The following limits apply when using the C<GetMediaForFragmentList>
API:

=over

=item *

A client can call C<GetMediaForFragmentList> up to five times per
second per stream.

=item *

Kinesis Video Streams sends media data at a rate of up to 25 megabytes
per second (or 200 megabits per second) during a
C<GetMediaForFragmentList> session.

=back



=head2 ListFragments

=over

=item StreamName => Str

=item [FragmentSelector => L<Paws::KinesisVideoArchivedMedia::FragmentSelector>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideoArchivedMedia::ListFragments>

Returns: a L<Paws::KinesisVideoArchivedMedia::ListFragmentsOutput> instance

Returns a list of Fragment objects from the specified stream and start
location within the archived data.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

