package Paws::Support::SeverityLevel;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::SeverityLevel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::SeverityLevel object:

  $service_obj->Method(Att1 => { Code => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::SeverityLevel object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

A code and name pair that represents the severity level of a support
case. The available values depend on the support plan for the account.
For more information, see Choosing a Severity
(https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity).

=head1 ATTRIBUTES


=head2 Code => Str

  The code for case severity level.

Valid values: C<low> | C<normal> | C<high> | C<urgent> | C<critical>


=head2 Name => Str

  The name of the severity level that corresponds to the severity level
code.

The values returned by the API differ from the values that are
displayed in the AWS Support Center. For example, for the code "low",
the API name is "Low", but the name in the Support Center is "General
guidance". These are the Support Center code/name mappings:

=over

=item *

C<low>: General guidance

=item *

C<normal>: System impaired

=item *

C<high>: Production system impaired

=item *

C<urgent>: Production system down

=item *

C<critical>: Business-critical system down

=back

For more information, see Choosing a Severity
(https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

