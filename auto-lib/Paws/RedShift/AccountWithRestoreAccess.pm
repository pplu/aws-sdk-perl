package Paws::RedShift::AccountWithRestoreAccess;
  use Moose;
  has AccountAlias => (is => 'ro', isa => 'Str');
  has AccountId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AccountWithRestoreAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::AccountWithRestoreAccess object:

  $service_obj->Method(Att1 => { AccountAlias => $value, ..., AccountId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::AccountWithRestoreAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountAlias

=head1 DESCRIPTION

Describes an AWS customer account authorized to restore a snapshot.

=head1 ATTRIBUTES


=head2 AccountAlias => Str

  The identifier of an AWS support account authorized to restore a
snapshot. For AWS support, the identifier is
C<amazon-redshift-support>.


=head2 AccountId => Str

  The identifier of an AWS customer account authorized to restore a
snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

