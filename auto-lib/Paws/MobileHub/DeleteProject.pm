
package Paws::MobileHub::DeleteProject;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MobileHub::Types qw//;
  has ProjectId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteProject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/projects/{projectId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MobileHub::DeleteProjectResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProjectId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'ProjectId' => 'projectId'
                  },
  'IsRequired' => {
                    'ProjectId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DeleteProject - Arguments for method DeleteProject on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProject on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method DeleteProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProject.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $DeleteProjectResult = $mobile->DeleteProject(
      ProjectId => 'MyProjectId',

    );

    # Results:
    my $DeletedResources  = $DeleteProjectResult->DeletedResources;
    my $OrphanedResources = $DeleteProjectResult->OrphanedResources;

    # Returns a L<Paws::MobileHub::DeleteProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/DeleteProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

Unique project identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProject in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

