package Paws::Batch::Ulimit;
  use Moose;
  has HardLimit => (is => 'ro', isa => 'Int', request_name => 'hardLimit', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has SoftLimit => (is => 'ro', isa => 'Int', request_name => 'softLimit', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::Ulimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::Ulimit object:

  $service_obj->Method(Att1 => { HardLimit => $value, ..., SoftLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::Ulimit object:

  $result = $service_obj->Method(...);
  $result->Att1->HardLimit

=head1 DESCRIPTION

The C<ulimit> settings to pass to the container.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HardLimit => Int

  The hard limit for the C<ulimit> type.


=head2 B<REQUIRED> Name => Str

  The C<type> of the C<ulimit>.


=head2 B<REQUIRED> SoftLimit => Int

  The soft limit for the C<ulimit> type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

