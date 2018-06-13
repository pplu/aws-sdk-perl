
package Paws::DeviceFarm::ListProjects;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListProjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListProjects - Arguments for method ListProjects on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To get information about a Device Farm project
    # The following example returns information about the specified project in
    # Device Farm.
    my $ListProjectsResult = $devicefarm->ListProjects(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE',
        'NextToken' =>
          'RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE'
      }
    );

    # Results:
    my $projects = $ListProjectsResult->projects;

    # Returns a L<Paws::DeviceFarm::ListProjectsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListProjects>

=head1 ATTRIBUTES


=head2 Arn => Str

Optional. If no Amazon Resource Name (ARN) is specified, then AWS
Device Farm returns a list of all projects for the AWS account. You can
also specify a project ARN.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

