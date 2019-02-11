package Paws::KinesisAnalyticsV2::ApplicationSummary;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationStatus => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has RuntimeEnvironment => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationSummary object:

  $service_obj->Method(Att1 => { ApplicationARN => $value, ..., RuntimeEnvironment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationARN

=head1 DESCRIPTION

Provides application summary information, including the application
Amazon Resource Name (ARN), name, and status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationARN => Str

  The ARN of the application.


=head2 B<REQUIRED> ApplicationName => Str

  The name of the application.


=head2 B<REQUIRED> ApplicationStatus => Str

  The status of the application.


=head2 B<REQUIRED> ApplicationVersionId => Int

  Provides the current application version.


=head2 B<REQUIRED> RuntimeEnvironment => Str

  The runtime environment for the application (C<SQL-1.0> or
C<JAVA-8-FLINK-1.5>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

