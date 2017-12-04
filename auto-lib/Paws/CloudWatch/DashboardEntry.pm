package Paws::CloudWatch::DashboardEntry;
  use Moose;
  has DashboardArn => (is => 'ro', isa => 'Str');
  has DashboardName => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DashboardEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::DashboardEntry object:

  $service_obj->Method(Att1 => { DashboardArn => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::DashboardEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->DashboardArn

=head1 DESCRIPTION

Represents a specific dashboard.

=head1 ATTRIBUTES


=head2 DashboardArn => Str

  The Amazon Resource Name (ARN) of the dashboard.


=head2 DashboardName => Str

  The name of the dashboard.


=head2 LastModified => Str

  The time stamp of when the dashboard was last modified, either by an
API call or through the console. This number is expressed as the number
of milliseconds since Jan 1, 1970 00:00:00 UTC.


=head2 Size => Int

  The size of the dashboard, in bytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

