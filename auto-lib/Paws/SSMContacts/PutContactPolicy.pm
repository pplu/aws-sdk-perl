
package Paws::SSMContacts::PutContactPolicy;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutContactPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::PutContactPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::PutContactPolicy - Arguments for method PutContactPolicy on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutContactPolicy on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method PutContactPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutContactPolicy.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $PutContactPolicyResult = $ssm -contacts->PutContactPolicy(
      ContactArn => 'MySsmContactsArn',
      Policy     => 'MyPolicy',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/PutContactPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The Amazon Resource Name (ARN) of the contact or escalation plan.



=head2 B<REQUIRED> Policy => Str

Details of the resource policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutContactPolicy in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

