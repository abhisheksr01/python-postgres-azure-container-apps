package test

import (
	"testing"

	"github.com/armakuni/go-terratest-helper"
	"github.com/gruntwork-io/terratest/modules/terraform"

	"github.com/stretchr/testify/assert"
)

func TestTerraformAzureResourceGroup(t *testing.T) {
	/* Arrange */
	// This will run `terraform init` and `terraform plan` and fail the test if there are any errors
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../../",
	})

	/* ACTION */
	plan := terraform.InitAndPlanAndShowWithStructNoLogTempPlanFile(t, terraformOptions)

	/* ASSERTIONS */
	// Verify that our Bucket name matches variable
	resourceGroup, err := tfplanstruct.GetResourceChangeAfterByAddressE("azurerm_resource_group.app_rg", plan)
	assert.Empty(t, err)
	assert.Equal(t, "dev-python-postgres-azure-app-rg", resourceGroup["name"])
	assert.Equal(t, "uksouth", resourceGroup["location"])
}
