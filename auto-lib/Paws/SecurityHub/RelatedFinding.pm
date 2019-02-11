package Paws::SecurityHub::RelatedFinding;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ProductArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::RelatedFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::RelatedFinding object:

  $service_obj->Method(Att1 => { Id => $value, ..., ProductArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::RelatedFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Related finding's details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The solution-generated identifier for a related finding.


=head2 B<REQUIRED> ProductArn => Str

  The ARN of the solution that generated a related finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

