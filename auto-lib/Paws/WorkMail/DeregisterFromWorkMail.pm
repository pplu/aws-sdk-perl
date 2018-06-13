
package Paws::WorkMail::DeregisterFromWorkMail;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterFromWorkMail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeregisterFromWorkMailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeregisterFromWorkMail - Arguments for method DeregisterFromWorkMail on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterFromWorkMail on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeregisterFromWorkMail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterFromWorkMail.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeregisterFromWorkMailResponse = $workmail->DeregisterFromWorkMail(
      EntityId       => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeregisterFromWorkMail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier for the entity to be updated.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the Amazon WorkMail
entity exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterFromWorkMail in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

