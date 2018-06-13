
package Paws::Discovery::DeleteApplications;
  use Moose;
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DeleteApplicationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DeleteApplications - Arguments for method DeleteApplications on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplications on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DeleteApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplications.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DeleteApplicationsResponse = $discovery->DeleteApplications(
      ConfigurationIds => [ 'MyApplicationId', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DeleteApplications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str|Undef]

Configuration ID of an application to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplications in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

