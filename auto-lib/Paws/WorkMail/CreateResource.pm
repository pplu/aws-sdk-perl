
package Paws::WorkMail::CreateResource;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateResource - Arguments for method CreateResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResource on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResource.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateResourceResponse = $workmail->CreateResource(
      Name           => 'MyResourceName',
      OrganizationId => 'MyOrganizationId',
      Type           => 'ROOM',

    );

    # Results:
    my $ResourceId = $CreateResourceResponse->ResourceId;

    # Returns a L<Paws::WorkMail::CreateResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the created resource.



=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization for which the resource
is created.



=head2 B<REQUIRED> Type => Str

The type of the created resource.

Valid values are: C<"ROOM">, C<"EQUIPMENT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

