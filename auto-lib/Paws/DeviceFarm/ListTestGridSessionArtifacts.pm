
package Paws::DeviceFarm::ListTestGridSessionArtifacts;
  use Moose;
  has MaxResult => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResult' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestGridSessionArtifacts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListTestGridSessionArtifactsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridSessionArtifacts - Arguments for method ListTestGridSessionArtifacts on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestGridSessionArtifacts on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListTestGridSessionArtifacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestGridSessionArtifacts.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $ListTestGridSessionArtifactsResult =
      $devicefarm->ListTestGridSessionArtifacts(
      SessionArn => 'MyDeviceFarmArn',
      MaxResult  => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Type       => 'VIDEO',                # OPTIONAL
      );

    # Results:
    my $Artifacts = $ListTestGridSessionArtifactsResult->Artifacts;
    my $NextToken = $ListTestGridSessionArtifactsResult->NextToken;

    # Returns a L<Paws::DeviceFarm::ListTestGridSessionArtifactsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListTestGridSessionArtifacts>

=head1 ATTRIBUTES


=head2 MaxResult => Int

The maximum number of results to be returned by a request.



=head2 NextToken => Str

Pagination token.



=head2 B<REQUIRED> SessionArn => Str

The ARN of a TestGridSession.



=head2 Type => Str

Limit results to a specified type of artifact.

Valid values are: C<"VIDEO">, C<"LOG">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestGridSessionArtifacts in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

