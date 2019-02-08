package Paws::WorkLink::FleetSummary;
  use Moose;
  has CompanyCode => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str');
  has FleetStatus => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::FleetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkLink::FleetSummary object:

  $service_obj->Method(Att1 => { CompanyCode => $value, ..., LastUpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkLink::FleetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompanyCode

=head1 DESCRIPTION

The summary of the fleet.

=head1 ATTRIBUTES


=head2 CompanyCode => Str

  The identifier used by users to sign into the Amazon WorkLink app.


=head2 CreatedTime => Str

  The time when the fleet was created.


=head2 DisplayName => Str

  The name to display.


=head2 FleetArn => Str

  The ARN of the fleet.


=head2 FleetName => Str

  The name of the fleet.


=head2 FleetStatus => Str

  The status of the fleet.


=head2 LastUpdatedTime => Str

  The time when the fleet was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

