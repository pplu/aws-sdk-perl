
package Paws::Connect::UpdateContactFlowName;
  use Moose;
  has ContactFlowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactFlowId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactFlowName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flows/{InstanceId}/{ContactFlowId}/name');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactFlowName - Arguments for method UpdateContactFlowName on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactFlowName on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContactFlowName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactFlowName.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateContactFlowName(
      ContactFlowId => 'MyContactFlowId',
      InstanceId    => 'MyInstanceId',
      Description   => 'MyContactFlowDescription',    # OPTIONAL
      Name          => 'MyContactFlowName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContactFlowName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the contact flow.



=head2 Description => Str

The description of the contact flow.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 Name => Str

The name of the contact flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactFlowName in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

