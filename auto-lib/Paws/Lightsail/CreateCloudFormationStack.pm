
package Paws::Lightsail::CreateCloudFormationStack;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::InstanceEntry]', traits => ['NameInRequest'], request_name => 'instances' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFormationStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateCloudFormationStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateCloudFormationStack - Arguments for method CreateCloudFormationStack on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFormationStack on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateCloudFormationStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFormationStack.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateCloudFormationStackResult = $lightsail->CreateCloudFormationStack(
      Instances => [
        {
          AvailabilityZone => 'Mystring',
          InstanceType     => 'MyNonEmptyString',
          PortInfoSource => 'DEFAULT', # values: DEFAULT, INSTANCE, NONE, CLOSED
          SourceName => 'MyResourceName',
          UserData   => 'Mystring',
        },
        ...
      ],

    );

    # Results:
    my $Operations = $CreateCloudFormationStackResult->Operations;

    # Returns a L<Paws::Lightsail::CreateCloudFormationStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateCloudFormationStack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Instances => ArrayRef[L<Paws::Lightsail::InstanceEntry>]

An array of parameters that will be used to create the new Amazon EC2
instance. You can only pass one instance entry at a time in this array.
You will get an invalid parameter error if you pass more than one
instance entry in this array.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCloudFormationStack in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

