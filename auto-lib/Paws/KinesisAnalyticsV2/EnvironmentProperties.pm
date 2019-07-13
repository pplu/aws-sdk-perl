package Paws::KinesisAnalyticsV2::EnvironmentProperties;
  use Moose;
  has PropertyGroups => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::PropertyGroup]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::EnvironmentProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::EnvironmentProperties object:

  $service_obj->Method(Att1 => { PropertyGroups => $value, ..., PropertyGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::EnvironmentProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->PropertyGroups

=head1 DESCRIPTION

Describes execution properties for a Java-based Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PropertyGroups => ArrayRef[L<Paws::KinesisAnalyticsV2::PropertyGroup>]

  Describes the execution property groups.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

