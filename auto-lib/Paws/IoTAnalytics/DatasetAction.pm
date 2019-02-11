package Paws::IoTAnalytics::DatasetAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest']);
  has ContainerAction => (is => 'ro', isa => 'Paws::IoTAnalytics::ContainerDatasetAction', request_name => 'containerAction', traits => ['NameInRequest']);
  has QueryAction => (is => 'ro', isa => 'Paws::IoTAnalytics::SqlQueryDatasetAction', request_name => 'queryAction', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetAction object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., QueryAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

A "DatasetAction" object that specifies how data set contents are
automatically created.

=head1 ATTRIBUTES


=head2 ActionName => Str

  The name of the data set action by which data set contents are
automatically created.


=head2 ContainerAction => L<Paws::IoTAnalytics::ContainerDatasetAction>

  Information which allows the system to run a containerized application
in order to create the data set contents. The application must be in a
Docker container along with any needed support libraries.


=head2 QueryAction => L<Paws::IoTAnalytics::SqlQueryDatasetAction>

  An "SqlQueryDatasetAction" object that uses an SQL query to
automatically create data set contents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

