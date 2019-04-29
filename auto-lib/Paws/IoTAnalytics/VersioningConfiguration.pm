package Paws::IoTAnalytics::VersioningConfiguration;
  use Moose;
  has MaxVersions => (is => 'ro', isa => 'Int', request_name => 'maxVersions', traits => ['NameInRequest']);
  has Unlimited => (is => 'ro', isa => 'Bool', request_name => 'unlimited', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::VersioningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::VersioningConfiguration object:

  $service_obj->Method(Att1 => { MaxVersions => $value, ..., Unlimited => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::VersioningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxVersions

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 MaxVersions => Int

  How many versions of data set contents will be kept. The "unlimited"
parameter must be false.


=head2 Unlimited => Bool

  If true, unlimited versions of data set contents will be kept.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

