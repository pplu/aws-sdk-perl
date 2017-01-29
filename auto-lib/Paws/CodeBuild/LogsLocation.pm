package Paws::CodeBuild::LogsLocation;
  use Moose;
  has DeepLink => (is => 'ro', isa => 'Str', xmlname => 'deepLink', request_name => 'deepLink', traits => ['Unwrapped','NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', xmlname => 'groupName', request_name => 'groupName', traits => ['Unwrapped','NameInRequest']);
  has StreamName => (is => 'ro', isa => 'Str', xmlname => 'streamName', request_name => 'streamName', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::LogsLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::LogsLocation object:

  $service_obj->Method(Att1 => { DeepLink => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::LogsLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->DeepLink

=head1 DESCRIPTION

Information about build logs in Amazon CloudWatch Logs.

=head1 ATTRIBUTES


=head2 DeepLink => Str

  The URL to an individual build log in Amazon CloudWatch Logs.


=head2 GroupName => Str

  The name of the Amazon CloudWatch Logs group for the build logs.


=head2 StreamName => Str

  The name of the Amazon CloudWatch Logs stream for the build logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

