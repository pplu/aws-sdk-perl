package Paws::Config::ConfigurationRecorder;
  use Moose;
  has name => (is => 'ro', isa => 'Str');
  has recordingGroup => (is => 'ro', isa => 'Paws::Config::RecordingGroup');
  has roleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigurationRecorder

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationRecorder object:

  $service_obj->Method(Att1 => { name => $value, ..., roleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationRecorder object:

  $result = $service_obj->Method(...);
  $result->Att1->name

=head1 ATTRIBUTES

=head2 name => Str

  

The name of the recorder. By default, AWS Config automatically assigns
the name "default" when creating the configuration recorder. You cannot
change the assigned name.










=head2 recordingGroup => Paws::Config::RecordingGroup

  

The recording group specifies either to record configurations for all
supported resources or to provide a list of resource types to record.
The list of resource types must be a subset of supported resource
types.










=head2 roleARN => Str

  

Amazon Resource Name (ARN) of the IAM role used to describe the AWS
resources associated with the account.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

