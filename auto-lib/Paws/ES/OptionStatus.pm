package Paws::ES::OptionStatus;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeletion => (is => 'ro', isa => 'Bool');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::OptionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::OptionStatus object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., UpdateVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::OptionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Provides the current status of the entity.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

  Timestamp which tells the creation date for the entity.


=head2 PendingDeletion => Bool

  Indicates whether the Elasticsearch domain is being deleted.


=head2 B<REQUIRED> State => Str

  Provides the C<OptionState> for the Elasticsearch domain.


=head2 B<REQUIRED> UpdateDate => Str

  Timestamp which tells the last updated time for the entity.


=head2 UpdateVersion => Int

  Specifies the latest version for the entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

