package Paws::ES::ServiceSoftwareOptions;
  use Moose;
  has AutomatedUpdateDate => (is => 'ro', isa => 'Str');
  has Cancellable => (is => 'ro', isa => 'Bool');
  has CurrentVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NewVersion => (is => 'ro', isa => 'Str');
  has UpdateAvailable => (is => 'ro', isa => 'Bool');
  has UpdateStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ServiceSoftwareOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ServiceSoftwareOptions object:

  $service_obj->Method(Att1 => { AutomatedUpdateDate => $value, ..., UpdateStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ServiceSoftwareOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomatedUpdateDate

=head1 DESCRIPTION

The current options of an Elasticsearch domain service software
options.

=head1 ATTRIBUTES


=head2 AutomatedUpdateDate => Str

  Timestamp, in Epoch time, until which you can manually request a
service software update. After this date, we automatically update your
service software.


=head2 Cancellable => Bool

  C<True> if you are able to cancel your service software version update.
C<False> if you are not able to cancel your service software version.


=head2 CurrentVersion => Str

  The current service software version that is present on the domain.


=head2 Description => Str

  The description of the C<UpdateStatus>.


=head2 NewVersion => Str

  The new service software version if one is available.


=head2 UpdateAvailable => Bool

  C<True> if you are able to update you service software version.
C<False> if you are not able to update your service software version.


=head2 UpdateStatus => Str

  The status of your service software update. This field can take the
following values: C<ELIGIBLE>, C<PENDING_UPDATE>, C<IN_PROGRESS>,
C<COMPLETED>, and C<NOT_ELIGIBLE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

