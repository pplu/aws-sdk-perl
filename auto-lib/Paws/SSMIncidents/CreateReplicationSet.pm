
package Paws::SSMIncidents::CreateReplicationSet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Regions => (is => 'ro', isa => 'Paws::SSMIncidents::RegionMapInput', traits => ['NameInRequest'], request_name => 'regions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createReplicationSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::CreateReplicationSetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::CreateReplicationSet - Arguments for method CreateReplicationSet on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationSet on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method CreateReplicationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationSet.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $CreateReplicationSetOutput = $ssm -incidents->CreateReplicationSet(
      Regions => {
        'MyRegionName' => {
          SseKmsKeyId => 'MySseKmsKey',    # max: 2048; OPTIONAL
        },    # key: max: 20
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateReplicationSetOutput->Arn;

    # Returns a L<Paws::SSMIncidents::CreateReplicationSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/CreateReplicationSet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 B<REQUIRED> Regions => L<Paws::SSMIncidents::RegionMapInput>

The Regions that Incident Manager replicates your data to. You can have
up to three Regions in your replication set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationSet in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

