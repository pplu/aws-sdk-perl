
package Paws::Connect::DisassociateInstanceStorageConfig;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssociationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateInstanceStorageConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/storage-config/{AssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DisassociateInstanceStorageConfig - Arguments for method DisassociateInstanceStorageConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateInstanceStorageConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DisassociateInstanceStorageConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateInstanceStorageConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DisassociateInstanceStorageConfig(
      AssociationId => 'MyAssociationId',
      InstanceId    => 'MyInstanceId',
      ResourceType  => 'CHAT_TRANSCRIPTS',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DisassociateInstanceStorageConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The existing association identifier that uniquely identifies the
resource type and storage config for the given instance ID.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> ResourceType => Str

A valid resource type.

Valid values are: C<"CHAT_TRANSCRIPTS">, C<"CALL_RECORDINGS">, C<"SCHEDULED_REPORTS">, C<"MEDIA_STREAMS">, C<"CONTACT_TRACE_RECORDS">, C<"AGENT_EVENTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateInstanceStorageConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

