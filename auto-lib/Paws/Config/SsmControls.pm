package Paws::Config::SsmControls;
  use Moose;
  has ConcurrentExecutionRatePercentage => (is => 'ro', isa => 'Int');
  has ErrorPercentage => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::SsmControls

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::SsmControls object:

  $service_obj->Method(Att1 => { ConcurrentExecutionRatePercentage => $value, ..., ErrorPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::SsmControls object:

  $result = $service_obj->Method(...);
  $result->Att1->ConcurrentExecutionRatePercentage

=head1 DESCRIPTION

AWS Systems Manager (SSM) specific remediation controls.

=head1 ATTRIBUTES


=head2 ConcurrentExecutionRatePercentage => Int

  The maximum percentage of remediation actions allowed to run in
parallel on the non-compliant resources for that specific rule. You can
specify a percentage, such as 10%. The default value is 10.


=head2 ErrorPercentage => Int

  The percentage of errors that are allowed before SSM stops running
automations on non-compliant resources for that specific rule. You can
specify a percentage of errors, for example 10%. If you do not specifiy
a percentage, the default is 50%. For example, if you set the
ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops
running the automations when the fifth error is received.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

