
package Paws::WAF::CreateSqlInjectionMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSqlInjectionMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::CreateSqlInjectionMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateSqlInjectionMatchSet - Arguments for method CreateSqlInjectionMatchSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSqlInjectionMatchSet on the 
AWS WAF service. Use the attributes of this class
as arguments to method CreateSqlInjectionMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSqlInjectionMatchSet.

As an example:

  $service_obj->CreateSqlInjectionMatchSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Name => Str

A friendly name or description for the SqlInjectionMatchSet that you're
creating. You can't change C<Name> after you create the
C<SqlInjectionMatchSet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSqlInjectionMatchSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

