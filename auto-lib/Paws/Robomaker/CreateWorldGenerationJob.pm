
package Paws::Robomaker::CreateWorldGenerationJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template', required => 1);
  has WorldCount => (is => 'ro', isa => 'Paws::Robomaker::WorldCount', traits => ['NameInRequest'], request_name => 'worldCount', required => 1);
  has WorldTags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'worldTags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorldGenerationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createWorldGenerationJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateWorldGenerationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateWorldGenerationJob - Arguments for method CreateWorldGenerationJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorldGenerationJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateWorldGenerationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorldGenerationJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateWorldGenerationJobResponse = $robomaker->CreateWorldGenerationJob(
      Template   => 'MyArn',
      WorldCount => {
        FloorplanCount            => 1,    # OPTIONAL
        InteriorCountPerFloorplan => 1,    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorldTags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateWorldGenerationJobResponse->Arn;
    my $ClientRequestToken =
      $CreateWorldGenerationJobResponse->ClientRequestToken;
    my $CreatedAt   = $CreateWorldGenerationJobResponse->CreatedAt;
    my $FailureCode = $CreateWorldGenerationJobResponse->FailureCode;
    my $Status      = $CreateWorldGenerationJobResponse->Status;
    my $Tags        = $CreateWorldGenerationJobResponse->Tags;
    my $Template    = $CreateWorldGenerationJobResponse->Template;
    my $WorldCount  = $CreateWorldGenerationJobResponse->WorldCount;
    my $WorldTags   = $CreateWorldGenerationJobResponse->WorldTags;

    # Returns a L<Paws::Robomaker::CreateWorldGenerationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateWorldGenerationJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world generator job.



=head2 B<REQUIRED> Template => Str

The Amazon Resource Name (arn) of the world template describing the
worlds you want to create.



=head2 B<REQUIRED> WorldCount => L<Paws::Robomaker::WorldCount>

Information about the world count.



=head2 WorldTags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
generated worlds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorldGenerationJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

