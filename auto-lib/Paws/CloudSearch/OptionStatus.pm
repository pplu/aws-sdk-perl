package Paws::CloudSearch::OptionStatus;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeletion => (is => 'ro', isa => 'Bool');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::OptionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::OptionStatus object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., UpdateVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::OptionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

The status of domain configuration option.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

  A timestamp for when this option was created.


=head2 PendingDeletion => Bool

  Indicates that the option will be deleted once processing is complete.


=head2 B<REQUIRED> State => Str

  The state of processing a change to an option. Possible values:

=over

=item * C<RequiresIndexDocuments>: the option's latest value will not
be deployed until IndexDocuments has been called and indexing is
complete.

=item * C<Processing>: the option's latest value is in the process of
being activated.

=item * C<Active>: the option's latest value is completely deployed.

=item * C<FailedToValidate>: the option value is not compatible with
the domain's data and cannot be used to index the data. You must either
modify the option value or update or remove the incompatible documents.

=back



=head2 B<REQUIRED> UpdateDate => Str

  A timestamp for when this option was last updated.


=head2 UpdateVersion => Int

  A unique integer that indicates when this option was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

