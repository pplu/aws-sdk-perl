package Paws::IoT1ClickProjects;
  use Moose;
  sub service { 'projects.iot1click' }
  sub signing_name { 'iot1click' }
  sub version { '2018-05-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateDeviceWithPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::AssociateDeviceWithPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::CreatePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::DeletePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::DescribePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDeviceFromPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::DisassociateDeviceFromPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevicesInPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::GetDevicesInPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlacements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::ListPlacements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::UpdatePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickProjects::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPlacements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlacements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPlacements(@_, nextToken => $next_result->nextToken);
        push @{ $result->placements }, @{ $next_result->placements };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'placements') foreach (@{ $result->placements });
        $result = $self->ListPlacements(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'placements') foreach (@{ $result->placements });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }


  sub operations { qw/AssociateDeviceWithPlacement CreatePlacement CreateProject DeletePlacement DeleteProject DescribePlacement DescribeProject DisassociateDeviceFromPlacement GetDevicesInPlacement ListPlacements ListProjects UpdatePlacement UpdateProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects - Perl Interface to AWS AWS IoT 1-Click Projects Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT1ClickProjects');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The AWS IoT 1-Click Project API Reference

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click-2018-05-14>


=head1 METHODS

=head2 AssociateDeviceWithPlacement

=over

=item DeviceId => Str

=item DeviceTemplateName => Str

=item PlacementName => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::AssociateDeviceWithPlacement>

Returns: a L<Paws::IoT1ClickProjects::AssociateDeviceWithPlacementResponse> instance

Associates a physical device with a placement.


=head2 CreatePlacement

=over

=item PlacementName => Str

=item ProjectName => Str

=item [Attributes => L<Paws::IoT1ClickProjects::PlacementAttributeMap>]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::CreatePlacement>

Returns: a L<Paws::IoT1ClickProjects::CreatePlacementResponse> instance

Creates an empty placement.


=head2 CreateProject

=over

=item ProjectName => Str

=item [Description => Str]

=item [PlacementTemplate => L<Paws::IoT1ClickProjects::PlacementTemplate>]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::CreateProject>

Returns: a L<Paws::IoT1ClickProjects::CreateProjectResponse> instance

Creates an empty project with a placement template. A project contains
zero or more placements that adhere to the placement template defined
in the project.


=head2 DeletePlacement

=over

=item PlacementName => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::DeletePlacement>

Returns: a L<Paws::IoT1ClickProjects::DeletePlacementResponse> instance

Deletes a placement. To delete a placement, it must not have any
devices associated with it.

When you delete a placement, all associated data becomes irretrievable.


=head2 DeleteProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::DeleteProject>

Returns: a L<Paws::IoT1ClickProjects::DeleteProjectResponse> instance

Deletes a project. To delete a project, it must not have any placements
associated with it.

When you delete a project, all associated data becomes irretrievable.


=head2 DescribePlacement

=over

=item PlacementName => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::DescribePlacement>

Returns: a L<Paws::IoT1ClickProjects::DescribePlacementResponse> instance

Describes a placement in a project.


=head2 DescribeProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::DescribeProject>

Returns: a L<Paws::IoT1ClickProjects::DescribeProjectResponse> instance

Returns an object describing a project.


=head2 DisassociateDeviceFromPlacement

=over

=item DeviceTemplateName => Str

=item PlacementName => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::DisassociateDeviceFromPlacement>

Returns: a L<Paws::IoT1ClickProjects::DisassociateDeviceFromPlacementResponse> instance

Removes a physical device from a placement.


=head2 GetDevicesInPlacement

=over

=item PlacementName => Str

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::GetDevicesInPlacement>

Returns: a L<Paws::IoT1ClickProjects::GetDevicesInPlacementResponse> instance

Returns an object enumerating the devices in a placement.


=head2 ListPlacements

=over

=item ProjectName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::ListPlacements>

Returns: a L<Paws::IoT1ClickProjects::ListPlacementsResponse> instance

Lists the placement(s) of a project.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::ListProjects>

Returns: a L<Paws::IoT1ClickProjects::ListProjectsResponse> instance

Lists the AWS IoT 1-Click project(s) associated with your AWS account
and region.


=head2 UpdatePlacement

=over

=item PlacementName => Str

=item ProjectName => Str

=item [Attributes => L<Paws::IoT1ClickProjects::PlacementAttributeMap>]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::UpdatePlacement>

Returns: a L<Paws::IoT1ClickProjects::UpdatePlacementResponse> instance

Updates a placement with the given attributes. To clear an attribute,
pass an empty value (i.e., "").


=head2 UpdateProject

=over

=item ProjectName => Str

=item [Description => Str]

=item [PlacementTemplate => L<Paws::IoT1ClickProjects::PlacementTemplate>]


=back

Each argument is described in detail in: L<Paws::IoT1ClickProjects::UpdateProject>

Returns: a L<Paws::IoT1ClickProjects::UpdateProjectResponse> instance

Updates a project associated with your AWS account and region. With the
exception of device template names, you can pass just the values that
need to be updated because the update request will change only the
values that are provided. To clear a value, pass the empty string
(i.e., C<"">).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPlacements(sub { },ProjectName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPlacements(ProjectName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - placements, passing the object as the first parameter, and the string 'placements' as the second parameter 

If not, it will return a a L<Paws::IoT1ClickProjects::ListPlacementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::IoT1ClickProjects::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

