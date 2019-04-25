package Paws::SecurityHub::Recommendation;
  use Moose;
  has Text => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Recommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Recommendation object:

  $service_obj->Method(Att1 => { Text => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Recommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->Text

=head1 DESCRIPTION

Provides a recommendation on how to remediate the issue identified
within a finding.

=head1 ATTRIBUTES


=head2 Text => Str

  The recommendation of what to do about the issue described in a
finding.


=head2 Url => Str

  A URL to link to general remediation information for the finding type
of a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

