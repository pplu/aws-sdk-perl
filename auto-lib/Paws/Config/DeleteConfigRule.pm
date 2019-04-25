
package Paws::Config::DeleteConfigRule;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteConfigRule - Arguments for method DeleteConfigRule on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigRule on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteConfigRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigRule.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->DeleteConfigRule(
      ConfigRuleName => 'MyStringWithCharLimit64',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteConfigRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigRule in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

