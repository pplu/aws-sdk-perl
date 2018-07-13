package Paws::DLM::RetainRule;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::RetainRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::RetainRule object:

  $service_obj->Method(Att1 => { Count => $value, ..., Count => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::RetainRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

Specifies the number of snapshots to keep for each EBS volume.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

  The number of snapshots to keep for each volume, up to a maximum of
1000.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

