package Paws::MigrationHubConfig::HomeRegionControl;
  use Moose;
  has ControlId => (is => 'ro', isa => 'Str');
  has HomeRegion => (is => 'ro', isa => 'Str');
  has RequestedTime => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::MigrationHubConfig::Target');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::HomeRegionControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubConfig::HomeRegionControl object:

  $service_obj->Method(Att1 => { ControlId => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubConfig::HomeRegionControl object:

  $result = $service_obj->Method(...);
  $result->Att1->ControlId

=head1 DESCRIPTION

A home region control is an object that specifies the home region for
an account, with some additional information. It contains a target
(always of type C<ACCOUNT>), an ID, and a time at which the home region
was set.

=head1 ATTRIBUTES


=head2 ControlId => Str

  A unique identifier that's generated for each home region control. It's
always a string that begins with "hrc-" followed by 12 lowercase
letters and numbers.


=head2 HomeRegion => Str

  The AWS Region that's been set as home region. For example, "us-west-2"
or "eu-central-1" are valid home regions.


=head2 RequestedTime => Str

  A timestamp representing the time when the customer called
C<CreateHomeregionControl> and set the home region for the account.


=head2 Target => L<Paws::MigrationHubConfig::Target>

  The target parameter specifies the identifier to which the home region
is applied, which is always an C<ACCOUNT>. It applies the home region
to the current C<ACCOUNT>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

