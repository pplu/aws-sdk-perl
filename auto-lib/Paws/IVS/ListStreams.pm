
package Paws::IVS::ListStreams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListStreams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::ListStreamsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListStreams - Arguments for method ListStreams on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreams on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method ListStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreams.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $ListStreamsResponse = $ivs->ListStreams(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStreamsResponse->NextToken;
    my $Streams   = $ListStreamsResponse->Streams;

    # Returns a L<Paws::IVS::ListStreamsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/ListStreams>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of streams to return. Default: 50.



=head2 NextToken => Str

The first stream to retrieve. This is used for pagination; see the
C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreams in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

