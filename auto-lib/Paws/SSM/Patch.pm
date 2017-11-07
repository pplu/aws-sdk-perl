package Paws::SSM::Patch;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str');
  has ContentUrl => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has KbNumber => (is => 'ro', isa => 'Str');
  has Language => (is => 'ro', isa => 'Str');
  has MsrcNumber => (is => 'ro', isa => 'Str');
  has MsrcSeverity => (is => 'ro', isa => 'Str');
  has Product => (is => 'ro', isa => 'Str');
  has ProductFamily => (is => 'ro', isa => 'Str');
  has ReleaseDate => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has Vendor => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Patch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Patch object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Vendor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Patch object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

Represents metadata about a patch.

=head1 ATTRIBUTES


=head2 Classification => Str

  The classification of the patch (for example, SecurityUpdates, Updates,
CriticalUpdates).


=head2 ContentUrl => Str

  The URL where more information can be obtained about the patch.


=head2 Description => Str

  The description of the patch.


=head2 Id => Str

  The ID of the patch (this is different than the Microsoft Knowledge
Base ID).


=head2 KbNumber => Str

  The Microsoft Knowledge Base ID of the patch.


=head2 Language => Str

  The language of the patch if it's language-specific.


=head2 MsrcNumber => Str

  The ID of the MSRC bulletin the patch is related to.


=head2 MsrcSeverity => Str

  The severity of the patch (for example Critical, Important, Moderate).


=head2 Product => Str

  The specific product the patch is applicable for (for example,
WindowsServer2016).


=head2 ProductFamily => Str

  The product family the patch is applicable for (for example, Windows).


=head2 ReleaseDate => Str

  The date the patch was released.


=head2 Title => Str

  The title of the patch.


=head2 Vendor => Str

  The name of the vendor providing the patch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

