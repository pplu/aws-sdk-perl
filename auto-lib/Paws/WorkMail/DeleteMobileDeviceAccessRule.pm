
package Paws::WorkMail::DeleteMobileDeviceAccessRule;
  use Moose;
  has MobileDeviceAccessRuleId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMobileDeviceAccessRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteMobileDeviceAccessRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteMobileDeviceAccessRule - Arguments for method DeleteMobileDeviceAccessRule on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMobileDeviceAccessRule on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteMobileDeviceAccessRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMobileDeviceAccessRule.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteMobileDeviceAccessRuleResponse =
      $workmail->DeleteMobileDeviceAccessRule(
      MobileDeviceAccessRuleId => 'MyMobileDeviceAccessRuleId',
      OrganizationId           => 'MyOrganizationId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteMobileDeviceAccessRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MobileDeviceAccessRuleId => Str

The identifier of the rule to be deleted.



=head2 B<REQUIRED> OrganizationId => Str

The Amazon WorkMail organization under which the rule will be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMobileDeviceAccessRule in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

