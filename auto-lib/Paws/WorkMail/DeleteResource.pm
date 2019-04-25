
package Paws::WorkMail::DeleteResource;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteResource - Arguments for method DeleteResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResource on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResource.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteResourceResponse = $workmail->DeleteResource(
      OrganizationId => 'MyOrganizationId',
      ResourceId     => 'MyResourceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization for which the resource
is deleted.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

