package Paws::MigrationHubConfig::Target;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubConfig::Target object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubConfig::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

The target parameter specifies the identifier to which the home region
is applied, which is always an C<ACCOUNT>. It applies the home region
to the current C<ACCOUNT>.

=head1 ATTRIBUTES


=head2 Id => Str

  The C<TargetID> is a 12-character identifier of the C<ACCOUNT> for
which the control was created. (This must be the current account.)


=head2 B<REQUIRED> Type => Str

  The target type is always an C<ACCOUNT>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

